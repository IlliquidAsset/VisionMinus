.class Lcn/powervision/flightlog/activity/FlightLogActivity$5;
.super Ljava/lang/Object;
.source "FlightLogActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/flightlog/activity/FlightLogActivity;->initPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/activity/FlightLogActivity;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$5;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogActivity$5;->this$0:Lcn/powervision/flightlog/activity/FlightLogActivity;

    iput p1, v0, Lcn/powervision/flightlog/activity/FlightLogActivity;->mPagerCurrentIndex:I

    return-void
.end method
