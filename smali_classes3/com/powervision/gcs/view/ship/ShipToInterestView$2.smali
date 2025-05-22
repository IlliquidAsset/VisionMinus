.class Lcom/powervision/gcs/view/ship/ShipToInterestView$2;
.super Ljava/lang/Object;
.source "ShipToInterestView.java"

# interfaces
.implements Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/ShipToInterestView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/ship/ShipToInterestView;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSailModeChanged(I)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;->this$0:Lcom/powervision/gcs/view/ship/ShipToInterestView;

    iget-object v0, v0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/powervision/gcs/view/ship/ShipToInterestView$2$1;-><init>(Lcom/powervision/gcs/view/ship/ShipToInterestView$2;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
