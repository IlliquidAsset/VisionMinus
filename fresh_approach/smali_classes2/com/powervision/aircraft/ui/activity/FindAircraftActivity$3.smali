.class Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$3;
.super Ljava/lang/Object;
.source "FindAircraftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->onClickSwitchMode(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$3;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 291
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$3;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->access$100(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 292
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$3;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->access$200(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$3;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_satellite_map_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$3;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->access$300(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$3;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_normal_map_unselect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$3;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->access$400(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;)Lcom/powervision/map/manager/MapSwitchManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/map/manager/MapSwitchManager;->setMapType(Z)V

    return-void
.end method
