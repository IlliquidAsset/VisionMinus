.class public Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "CameraVideoSettingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

.field private viewfe4:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;Landroid/view/View;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_video_mode_name:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipCamaraVideoModeName\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeName:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_video_mode_value:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipCamaraVideoModeValue\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeValue:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_video_mode_item_arrow:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'shipCamaraVideoModeItemArrow\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeItemArrow:Landroid/widget/ImageView;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_video_mode_layout:I

    const-string v1, "field \'shipCamaraVideoModeLayout\' and method \'ship_camara_video_mode_layout\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    sget v1, Lcom/powervision/gcs/R$id;->ship_camara_video_mode_layout:I

    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'shipCamaraVideoModeLayout\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeLayout:Landroid/widget/RelativeLayout;

    .line 34
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding;->viewfe4:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_video_mode_listview:I

    const-class v1, Landroid/widget/ExpandableListView;

    const-string v2, "field \'shipCamaraVideoModeListview\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeListview:Landroid/widget/ExpandableListView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    .line 51
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeName:Landroid/widget/TextView;

    .line 52
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeValue:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeItemArrow:Landroid/widget/ImageView;

    .line 54
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeLayout:Landroid/widget/RelativeLayout;

    .line 55
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->shipCamaraVideoModeListview:Landroid/widget/ExpandableListView;

    .line 57
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding;->viewfe4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding;->viewfe4:Landroid/view/View;

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
