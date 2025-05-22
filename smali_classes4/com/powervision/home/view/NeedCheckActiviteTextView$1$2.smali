.class Lcom/powervision/home/view/NeedCheckActiviteTextView$1$2;
.super Ljava/lang/Object;
.source "NeedCheckActiviteTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/view/NeedCheckActiviteTextView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/home/view/NeedCheckActiviteTextView$1;


# direct methods
.method constructor <init>(Lcom/powervision/home/view/NeedCheckActiviteTextView$1;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$1$2;->this$1:Lcom/powervision/home/view/NeedCheckActiviteTextView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/powervision/home/view/NeedCheckActiviteTextView$1$2;->this$1:Lcom/powervision/home/view/NeedCheckActiviteTextView$1;

    iget-object p1, p1, Lcom/powervision/home/view/NeedCheckActiviteTextView$1;->this$0:Lcom/powervision/home/view/NeedCheckActiviteTextView;

    invoke-static {p1}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->access$000(Lcom/powervision/home/view/NeedCheckActiviteTextView;)V

    .line 91
    invoke-static {}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick: unActiviteTheMechine"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
