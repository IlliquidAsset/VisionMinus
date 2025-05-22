.class Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShipCommonSettingView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$3;->this$0:Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$3;->val$target:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCommonSettingView_ViewBinding$3;->val$target:Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->ship_common_maintenance_btn()V

    return-void
.end method
