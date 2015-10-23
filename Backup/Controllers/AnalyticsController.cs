using System;
using System.Collections.Generic;
using System.Web.Mvc;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Net;
using System.Text;
using System.Configuration;

namespace MvcApplication1.Controllers
{
    public class AnalyticsController : Controller
    {
        private int ConvertToUnixTimestamp(DateTime value)
        {
            TimeSpan span = (value - new DateTime(1970, 1, 1, 0, 0, 0, 0).ToLocalTime());
            return (int)span.TotalSeconds;
        }

        private string UtmcCookieString()
        {

            Random randomNumber = new Random();

            string timeStampCurrent = ConvertToUnixTimestamp(DateTime.Now).ToString();

            string utma = String.Format("{0}.{1}.{2}.{3}.{4}.{5}",
                                        0, //DomainHash
                                        int.Parse(randomNumber.Next(1000000000).ToString()),
                                        timeStampCurrent,
                                        timeStampCurrent,
                                        timeStampCurrent,
                                        "2" //visitCount
            );

            //referral information
            string utmz = String.Format("{0}.{1}.{2}.{3}.utmcsr={4}|utmccn={5}|utmcmd={6}",
                                        0, //DomainHash
                                        timeStampCurrent,
                                        "1",
                                        "1",
                                        "(direct)", //ReferralSource
                                        "(none)", //Campaign
                                        "(direct)" //Medium
            );

            //return String.Format("__utma%3D{0}.{1}.{2}.{3}.{4}.{5}",)))
            string utmcc = Uri.EscapeDataString(String.Format("__utma={0};+__utmz={1};",
                                                                utma,
                                                                utmz
                                                    ));

            return (utmcc);
        }

        public Uri TrackingGifUri(string category, string action, string label, int value)
        {
            Random randomNumber = new Random();

            // REQUEST URL FORMAT:
            // http://www.google-analytics.com/__utm.gif?utmwv=4.6.5&utmn=488134812&utmhn=facebook.com&utmcs=UTF-8&utmsr=1024x576&utmsc=24-bit&utmul=en-gb&utmje=0&utmfl=10.0%20r42&utmdt=Facebook%20Contact%20Us&utmhid=700048481&utmr=-&utmp=%2Fwebdigi%2Fcontact&utmac=UA-3659733-5&utmcc=__utma%3D155417661.474914265.1263033522.1265456497.1265464692.6%3B%2B__utmz%3D155417661.1263033522.1.1.utmcsr%3D(direct)%7Cutmccn%3D(direct)%7Cutmcmd%3D(none)%3B


            List<KeyValuePair<string, string>> paramList = new List<KeyValuePair<string, string>>
			{
				new KeyValuePair<string,string>("utmwv", "4.7.2"),									// Analytics version
				new KeyValuePair<string,string>("utmn", randomNumber.Next(1000000000).ToString()),	// Random request number
				new KeyValuePair<string,string>("utmhn", "miketti.ru"),								// Domain name
				new KeyValuePair<string,string>("utmcs", "UTF-8"),									// Document encoding
				new KeyValuePair<string,string>("utmsr", "-"),										// Screen Resolution
				new KeyValuePair<string,string>("utmsc", "-"),										// Screen Resolution
				new KeyValuePair<string,string>("utmul", "-"),										// user language
				new KeyValuePair<string,string>("utmje", "0"),										// java enabled or not
				new KeyValuePair<string,string>("utmfl", "-"),										// user flash version
				new KeyValuePair<string,string>("utmdt", string.Empty),			                    // page title
				new KeyValuePair<string,string>("utmhid", randomNumber.Next(1000000000).ToString()),// page title
				new KeyValuePair<string,string>("utmr", "-"),										// referrer URL
				new KeyValuePair<string,string>("utmp", "/"),   									// document page URL (relative to root)
                new KeyValuePair<string,string>("utmac", ConfigurationManager.AppSettings["AnalyticsAccountNumber"]),
                new KeyValuePair<string,string>("utmcc", UtmcCookieString())	    				// cookie string (encoded)
			};

            //taken from http://code.google.com/apis/analytics/docs/tracking/gaTrackingTroubleshooting.html
            string eventString = String.Format("5({0}*{1}*{2})({3})", category, action, label, value.ToString());

            paramList.Add(new KeyValuePair<string, string>("utme", Uri.EscapeDataString(eventString)));
            paramList.Add(new KeyValuePair<string, string>("gaq", "1"));
            paramList.Add(new KeyValuePair<string, string>("utmt", "event")); // type of request (page view or event etc)

            if (!String.IsNullOrEmpty(Request.UserHostAddress))
            {
                paramList.Add(new KeyValuePair<string, string>("utmip", Request.UserHostAddress));
            }

            StringBuilder GaParams = new StringBuilder();
            foreach (KeyValuePair<string, string> pair in paramList)
            {
                GaParams.Append(String.Format("{0}={1}&", pair.Key, pair.Value));
            }
            string paramsFinal = GaParams.ToString();
            paramsFinal = paramsFinal.Substring(0, paramsFinal.Length - 1);

            return new Uri(String.Format("http://www.google-analytics.com/__utm.gif?{0}", paramsFinal));
        }

        private void FireTrackingEvent(string category, string action, string label, int value)
        {
            WebRequest requestForGaGif = WebRequest.Create(TrackingGifUri(category, action, label, value));
            requestForGaGif.Proxy.Credentials = CredentialCache.DefaultCredentials;
            using (WebResponse response = requestForGaGif.GetResponse())
            {
                //ignore response
            }
        }

        public ActionResult Index(string param1, string param2, string param3)
        {
            FireTrackingEvent(param1, param2, param3, 1);

            Bitmap bitmap = new Bitmap(1, 1);
            var graphics = Graphics.FromImage(bitmap);

            MemoryStream stream = new MemoryStream();
            bitmap.Save(stream, ImageFormat.Png);

            return new FileContentResult(stream.ToArray(), "image/png");
        }

        public ActionResult Mail(string param1, string param2)
        {
            return Index("Почта", param1, param2);
        }
    }
}
