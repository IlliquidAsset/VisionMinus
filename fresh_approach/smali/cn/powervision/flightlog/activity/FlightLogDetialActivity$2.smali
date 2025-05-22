.class Lcn/powervision/flightlog/activity/FlightLogDetialActivity$2;
.super Ljava/lang/Object;
.source "FlightLogDetialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->showLeftMapView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/flightlog/activity/FlightLogDetialActivity;


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogDetialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 316
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogDetialActivity;

    invoke-static {p1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->access$000(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 317
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogDetialActivity;

    invoke-static {p1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->access$100(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogDetialActivity;

    invoke-virtual {v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/powervision/flightlog/R$mipmap;->aircraft_satellite_map_unselect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogDetialActivity;

    invoke-static {p1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->access$200(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogDetialActivity;

    invoke-virtual {v0}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/powervision/flightlog/R$mipmap;->aircraft_normal_map_select:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 319
    iget-object p1, p0, Lcn/powervision/flightlog/activity/FlightLogDetialActivity$2;->this$0:Lcn/powervision/flightlog/activity/FlightLogDetialActivity;

    invoke-static {p1}, Lcn/powervision/flightlog/activity/FlightLogDetialActivity;->access$300(Lcn/powervision/flightlog/activity/FlightLogDetialActivity;)Lcom/powervision/map/manager/MapSwitchManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/map/manager/MapSwitchManager;->setMapType(Z)V

    return-void
.end method
