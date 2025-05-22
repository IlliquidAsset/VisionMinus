.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShipCommonAboutFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding$2;->val$target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment_ViewBinding$2;->val$target:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->self_check_layout()V

    return-void
.end method
