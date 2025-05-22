.class Lcom/powervision/base/views/LiveStatusView$1$1;
.super Ljava/lang/Object;
.source "LiveStatusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/LiveStatusView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/base/views/LiveStatusView$1;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/LiveStatusView$1;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/powervision/base/views/LiveStatusView$1$1;->this$1:Lcom/powervision/base/views/LiveStatusView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/powervision/base/views/LiveStatusView$1$1;->this$1:Lcom/powervision/base/views/LiveStatusView$1;

    iget-object v0, v0, Lcom/powervision/base/views/LiveStatusView$1;->this$0:Lcom/powervision/base/views/LiveStatusView;

    invoke-static {v0}, Lcom/powervision/base/views/LiveStatusView;->access$004(Lcom/powervision/base/views/LiveStatusView;)I

    .line 133
    iget-object v0, p0, Lcom/powervision/base/views/LiveStatusView$1$1;->this$1:Lcom/powervision/base/views/LiveStatusView$1;

    iget-object v0, v0, Lcom/powervision/base/views/LiveStatusView$1;->this$0:Lcom/powervision/base/views/LiveStatusView;

    invoke-static {v0}, Lcom/powervision/base/views/LiveStatusView;->access$000(Lcom/powervision/base/views/LiveStatusView;)I

    move-result v0

    invoke-static {v0}, Lcom/powervision/base/utils/TimeUtils;->formatRecordVideoTime(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/powervision/base/views/LiveStatusView$1$1;->this$1:Lcom/powervision/base/views/LiveStatusView$1;

    iget-object v1, v1, Lcom/powervision/base/views/LiveStatusView$1;->this$0:Lcom/powervision/base/views/LiveStatusView;

    invoke-static {v1}, Lcom/powervision/base/views/LiveStatusView;->access$100(Lcom/powervision/base/views/LiveStatusView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
