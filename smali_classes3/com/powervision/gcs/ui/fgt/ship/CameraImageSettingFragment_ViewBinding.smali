.class public Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "CameraImageSettingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

.field private viewfde:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;Landroid/view/View;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_shootingmode_name:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipCamaraShootingmodeName\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeName:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_shootingmode_value:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'shipCamaraShootingmodeValue\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeValue:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_item_arrow:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'shipCamaraItemArrow\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraItemArrow:Landroid/widget/ImageView;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_shootingmode_layout:I

    const-string v1, "field \'shipCamaraShootingmodeLayout\' and method \'ship_camara_shootingmode_layout\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    sget v1, Lcom/powervision/gcs/R$id;->ship_camara_shootingmode_layout:I

    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'shipCamaraShootingmodeLayout\'"

    invoke-static {v0, v1, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeLayout:Landroid/widget/RelativeLayout;

    .line 34
    iput-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment_ViewBinding;->viewfde:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment_ViewBinding$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_shootingmode_listview:I

    const-class v1, Landroid/widget/ExpandableListView;

    const-string v2, "field \'shipCamaraShootingmodeListview\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeListview:Landroid/widget/ExpandableListView;

    .line 42
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_shootingmode_line:I

    const-string v1, "field \'shipCamaraPicSizeLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraPicSizeLine:Landroid/view/View;

    .line 43
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_pic_size_listview:I

    const-class v1, Landroid/widget/ExpandableListView;

    const-string v2, "field \'shipCamaraPicSizeListview\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p1, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraPicSizeListview:Landroid/widget/ExpandableListView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment_ViewBinding;->target:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    .line 53
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeName:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeValue:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraItemArrow:Landroid/widget/ImageView;

    .line 56
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeLayout:Landroid/widget/RelativeLayout;

    .line 57
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraShootingmodeListview:Landroid/widget/ExpandableListView;

    .line 58
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraPicSizeLine:Landroid/view/View;

    .line 59
    iput-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->shipCamaraPicSizeListview:Landroid/widget/ExpandableListView;

    .line 61
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment_ViewBinding;->viewfde:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment_ViewBinding;->viewfde:Landroid/view/View;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
