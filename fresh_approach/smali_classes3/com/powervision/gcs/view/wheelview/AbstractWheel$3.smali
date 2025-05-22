.class Lcom/powervision/gcs/view/wheelview/AbstractWheel$3;
.super Ljava/lang/Object;
.source "AbstractWheel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/wheelview/AbstractWheel;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/wheelview/AbstractWheel;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$3;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/powervision/gcs/view/wheelview/AbstractWheel$3;->this$0:Lcom/powervision/gcs/view/wheelview/AbstractWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/wheelview/AbstractWheel;->invalidateItemsLayout(Z)V

    return-void
.end method
