.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$21;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShipMainActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$21;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$21;->val$target:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity_ViewBinding$21;->val$target:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->ship_quick_sche_iv(Landroid/view/View;)V

    return-void
.end method
