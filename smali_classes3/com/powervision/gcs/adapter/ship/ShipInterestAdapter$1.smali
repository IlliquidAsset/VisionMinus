.class Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$1;
.super Ljava/lang/Object;
.source "ShipInterestAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;

.field final synthetic val$shipInterestModel:Lcom/powervision/gcs/model/ship/ShipInterestModel;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;Lcom/powervision/gcs/model/ship/ShipInterestModel;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;

    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$1;->val$shipInterestModel:Lcom/powervision/gcs/model/ship/ShipInterestModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$1;->this$0:Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;

    invoke-static {p1}, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;->access$000(Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter;)Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$IInterestEditListener;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$1;->val$shipInterestModel:Lcom/powervision/gcs/model/ship/ShipInterestModel;

    invoke-interface {p1, v0}, Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$IInterestEditListener;->onPositionHistory(Lcom/powervision/gcs/model/ship/ShipInterestModel;)V

    return-void
.end method
