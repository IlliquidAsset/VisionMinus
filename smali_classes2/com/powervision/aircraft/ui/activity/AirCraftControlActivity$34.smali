.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$34;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 4179
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$34;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 4182
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$34;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4183
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$34;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$34;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_satellite_map_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4184
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$34;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$34;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_normal_map_unselect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4185
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$34;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$10500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/map/manager/MapSwitchManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/map/manager/MapSwitchManager;->setMapType(Z)V

    return-void
.end method
