.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;
.super Lcom/powervision/gcs/view/ship/oneclick/AbstractOneClickListener;
.source "ShipMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 7005
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/oneclick/AbstractOneClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public oneClick(Landroid/view/View;)V
    .locals 11

    .line 7011
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 7012
    sget v0, Lcom/powervision/gcs/R$id;->cycle_video_view:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 7013
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result p1

    if-nez p1, :cond_0

    .line 7014
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-static {p1, v0, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/gcs/view/CustomCycleLayout;Lcom/powervision/gcs/view/CustomCycleLayout;)V

    goto :goto_0

    .line 7016
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    iget-object v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v2, v2, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-static {p1, v0, v2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/gcs/view/CustomCycleLayout;Lcom/powervision/gcs/view/CustomCycleLayout;)V

    .line 7019
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5202(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    goto/16 :goto_5

    .line 7020
    :cond_1
    sget v0, Lcom/powervision/gcs/R$id;->cycle_sonar_view:I

    if-ne p1, v0, :cond_3

    .line 7021
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result p1

    if-nez p1, :cond_2

    .line 7022
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-static {p1, v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/gcs/view/CustomCycleLayout;Lcom/powervision/gcs/view/CustomCycleLayout;)V

    goto :goto_1

    .line 7024
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-static {p1, v0, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/gcs/view/CustomCycleLayout;Lcom/powervision/gcs/view/CustomCycleLayout;)V

    .line 7027
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5202(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    goto/16 :goto_5

    .line 7028
    :cond_3
    sget v0, Lcom/powervision/gcs/R$id;->layout_shrink:I

    const/high16 v2, 0x42280000    # 42.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne p1, v0, :cond_6

    .line 7029
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutShrink:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7030
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutShrink:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setZ(F)V

    .line 7031
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7032
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7033
    invoke-static {v5}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7034
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 7036
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7038
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result p1

    if-nez p1, :cond_4

    .line 7039
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v4}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7040
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v4}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7041
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    .line 7042
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    .line 7044
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->layoutDirection:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7045
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7047
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarConnectState;->isIsMounted()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 7048
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 7050
    :cond_4
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 7051
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v4}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7052
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v4}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7053
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    .line 7054
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    .line 7056
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->layoutDirection:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7057
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7058
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarConnectState;->isIsMounted()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 7059
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 7062
    :cond_5
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v4}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7063
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v4}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7064
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    .line 7065
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    .line 7066
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->layoutDirection:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7067
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7068
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 7070
    :cond_6
    sget v0, Lcom/powervision/gcs/R$id;->image_quick_map:I

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x43200000    # 160.0f

    const/high16 v9, 0x41f00000    # 30.0f

    const/4 v10, 0x4

    if-ne p1, v0, :cond_9

    .line 7071
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutShrink:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7072
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutShrink:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v9}, Landroid/widget/RelativeLayout;->setZ(F)V

    .line 7073
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7074
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/view/CustomCycleLayout;->setIsCycleView(Z)V

    .line 7075
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setIsCycleView(Z)V

    .line 7076
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setIsCycleView(Z)V

    .line 7077
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7078
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7079
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7080
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7081
    invoke-static {v8}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7082
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 7084
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7085
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->layoutDirection:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7086
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 7087
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v10}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7088
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarConnectState;->isIsMounted()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 7089
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7091
    :cond_7
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    goto :goto_2

    .line 7093
    :cond_8
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v10}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7094
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7095
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    .line 7097
    :goto_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v7}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    goto/16 :goto_5

    .line 7098
    :cond_9
    sget v0, Lcom/powervision/gcs/R$id;->image_quick_sonar:I

    if-ne p1, v0, :cond_b

    .line 7099
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/oneclick/AbstractOneClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/CustomCycleLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7100
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutShrink:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7101
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutShrink:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v9}, Landroid/widget/RelativeLayout;->setZ(F)V

    .line 7102
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7103
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/view/CustomCycleLayout;->setIsCycleView(Z)V

    .line 7104
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setIsCycleView(Z)V

    .line 7105
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setIsCycleView(Z)V

    .line 7106
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7107
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7108
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7109
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7110
    invoke-static {v8}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7111
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 7113
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7114
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7115
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result p1

    if-nez p1, :cond_a

    .line 7116
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v10}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7117
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    .line 7118
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 7120
    :cond_a
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v10}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7121
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    .line 7122
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->layoutDirection:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7124
    :goto_3
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v7}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    goto/16 :goto_5

    .line 7125
    :cond_b
    sget v0, Lcom/powervision/gcs/R$id;->image_quick_video:I

    if-ne p1, v0, :cond_f

    .line 7126
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutShrink:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7127
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutShrink:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v9}, Landroid/widget/RelativeLayout;->setZ(F)V

    .line 7128
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7129
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_c

    .line 7130
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8000(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V

    .line 7132
    :cond_c
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7900(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/CustomCycleLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7134
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v1}, Lcom/powervision/gcs/view/CustomCycleLayout;->setIsCycleView(Z)V

    .line 7135
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setIsCycleView(Z)V

    .line 7136
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setIsCycleView(Z)V

    .line 7137
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7138
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v6}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7139
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7140
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7141
    invoke-static {v8}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7142
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 7144
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mLayoutHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7145
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7146
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$5200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)I

    move-result p1

    if-nez p1, :cond_d

    .line 7147
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v10}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7148
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->sonarCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    .line 7149
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarConnectState;->isIsMounted()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 7150
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mImageQuickSonar:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 7153
    :cond_d
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v10}, Lcom/powervision/gcs/view/CustomCycleLayout;->setVisibility(I)V

    .line 7154
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v5}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    .line 7155
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->layoutDirection:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7157
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$54;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->videoCycleLayout:Lcom/powervision/gcs/view/CustomCycleLayout;

    invoke-virtual {p1, v7}, Lcom/powervision/gcs/view/CustomCycleLayout;->setZ(F)V

    :cond_f
    :goto_5
    return-void
.end method
