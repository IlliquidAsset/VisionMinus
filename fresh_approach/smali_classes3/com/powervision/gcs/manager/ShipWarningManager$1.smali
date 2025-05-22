.class Lcom/powervision/gcs/manager/ShipWarningManager$1;
.super Ljava/lang/Object;
.source "ShipWarningManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/manager/ShipWarningManager;->addView(Lcom/powervision/gcs/model/ship/ShipWarning;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/manager/ShipWarningManager;

.field final synthetic val$manualView:Landroid/view/View;

.field final synthetic val$warning:Lcom/powervision/gcs/model/ship/ShipWarning;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/ShipWarningManager;Landroid/view/View;Lcom/powervision/gcs/model/ship/ShipWarning;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/powervision/gcs/manager/ShipWarningManager$1;->this$0:Lcom/powervision/gcs/manager/ShipWarningManager;

    iput-object p2, p0, Lcom/powervision/gcs/manager/ShipWarningManager$1;->val$manualView:Landroid/view/View;

    iput-object p3, p0, Lcom/powervision/gcs/manager/ShipWarningManager$1;->val$warning:Lcom/powervision/gcs/model/ship/ShipWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/powervision/gcs/manager/ShipWarningManager$1;->this$0:Lcom/powervision/gcs/manager/ShipWarningManager;

    invoke-static {p1}, Lcom/powervision/gcs/manager/ShipWarningManager;->access$000(Lcom/powervision/gcs/manager/ShipWarningManager;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/manager/ShipWarningManager$1;->val$manualView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 114
    iget-object p1, p0, Lcom/powervision/gcs/manager/ShipWarningManager$1;->this$0:Lcom/powervision/gcs/manager/ShipWarningManager;

    invoke-static {p1}, Lcom/powervision/gcs/manager/ShipWarningManager;->access$100(Lcom/powervision/gcs/manager/ShipWarningManager;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/manager/ShipWarningManager$1;->val$warning:Lcom/powervision/gcs/model/ship/ShipWarning;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
