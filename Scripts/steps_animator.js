var StepsAnimator = { maxLap: 6, maxStep: 5 }
StepsAnimator.Start = function () {
    StepsAnimator.Lap = 1;
    StepsAnimator.Step = 1;
    setTimeout(function () {
        StepsAnimator.AnimateSteps()
    }, 5000)
}
StepsAnimator.Stop = function () {
    StepsAnimator.Lap = StepsAnimator.maxLap
}
StepsAnimator.AnimateSteps = function () {
    if (StepsAnimator.Lap < StepsAnimator.maxLap) {
        $(".step" + StepsAnimator.Step).css({ color: "#ff8004" });
        setTimeout(function () {
            $(".step" + StepsAnimator.Step).css({ color: "#777" });
            if (StepsAnimator.Step == StepsAnimator.maxStep) {
                StepsAnimator.Step = 0;
                StepsAnimator.Lap++;
            }
            setTimeout(function () {
                StepsAnimator.Step++
                StepsAnimator.AnimateSteps()
            }, 1);
        }, 1000);
    }
}   