.class Lcom/powervision/home/view/NeedCheckActiviteTextView$1;
.super Ljava/lang/Object;
.source "NeedCheckActiviteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/view/NeedCheckActiviteTextView;->changeActiviteState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/view/NeedCheckActiviteTextView;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/powervision/home/view/NeedCheckActiviteTextView;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$1;->this$0:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    iput p2, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget v0, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$1;->val$state:I

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$1;->this$0:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    new-instance v1, Lcom/powervision/home/view/NeedCheckActiviteTextView$1$1;

    invoke-direct {v1, p0}, Lcom/powervision/home/view/NeedCheckActiviteTextView$1$1;-><init>(Lcom/powervision/home/view/NeedCheckActiviteTextView$1;)V

    invoke-virtual {v0, v1}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$1;->this$0:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    new-instance v1, Lcom/powervision/home/view/NeedCheckActiviteTextView$1$2;

    invoke-direct {v1, p0}, Lcom/powervision/home/view/NeedCheckActiviteTextView$1$2;-><init>(Lcom/powervision/home/view/NeedCheckActiviteTextView$1;)V

    invoke-virtual {v0, v1}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
