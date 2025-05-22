.class Lcom/powervision/home/view/NeedCheckActiviteTextView$2;
.super Ljava/lang/Object;
.source "NeedCheckActiviteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/view/NeedCheckActiviteTextView;->onActiveBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/view/NeedCheckActiviteTextView;


# direct methods
.method constructor <init>(Lcom/powervision/home/view/NeedCheckActiviteTextView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$2;->this$0:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 108
    sget-boolean v0, Lcom/powervision/base/config/GlobalConfig;->canInActivity:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$2;->this$0:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    invoke-virtual {v0}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->inOrswtich()V

    :cond_0
    return-void
.end method
