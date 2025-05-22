.class Lcom/powervision/base/views/LoadingProgressBar$2;
.super Ljava/lang/Object;
.source "LoadingProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/LoadingProgressBar;->show(JLcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/LoadingProgressBar;

.field final synthetic val$listener:Lcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/LoadingProgressBar;Lcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/powervision/base/views/LoadingProgressBar$2;->this$0:Lcom/powervision/base/views/LoadingProgressBar;

    iput-object p2, p0, Lcom/powervision/base/views/LoadingProgressBar$2;->val$listener:Lcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/powervision/base/views/LoadingProgressBar$2;->this$0:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/powervision/base/views/LoadingProgressBar$2;->this$0:Lcom/powervision/base/views/LoadingProgressBar;

    invoke-virtual {v0}, Lcom/powervision/base/views/LoadingProgressBar;->dismiss()V

    .line 71
    iget-object v0, p0, Lcom/powervision/base/views/LoadingProgressBar$2;->val$listener:Lcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
