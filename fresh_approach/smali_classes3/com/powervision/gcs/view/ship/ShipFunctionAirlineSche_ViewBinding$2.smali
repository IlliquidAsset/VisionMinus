.class Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShipFunctionAirlineSche_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;-><init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding$2;->this$0:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding$2;->val$target:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche_ViewBinding$2;->val$target:Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipFunctionAirlineSche;->tv_function_pause()V

    return-void
.end method
