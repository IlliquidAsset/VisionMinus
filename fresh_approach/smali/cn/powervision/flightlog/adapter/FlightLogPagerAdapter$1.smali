.class Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter$1;
.super Ljava/lang/Object;
.source "FlightLogPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->setItemDatas(ILandroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter$1;->this$0:Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 116
    iget-object v0, p0, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter$1;->this$0:Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;

    invoke-static {v0, p1}, Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;->access$000(Lcn/powervision/flightlog/adapter/FlightLogPagerAdapter;I)V

    return-void
.end method
