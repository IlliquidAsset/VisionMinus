.class Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;
.super Ljava/lang/Object;
.source "HandheldGeneralFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 140
    sget v0, Lcom/powervision/handheld/R$id;->text_max_cache:I

    if-ne v0, p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$000(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)V

    goto/16 :goto_0

    .line 142
    :cond_0
    sget v0, Lcom/powervision/handheld/R$id;->text_2g:I

    if-ne v0, p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$100(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "2G"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$200(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 145
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$400(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 146
    :cond_1
    sget v0, Lcom/powervision/handheld/R$id;->text_4g:I

    if-ne v0, p1, :cond_2

    .line 147
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$100(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "4G"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$200(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 149
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$400(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 150
    :cond_2
    sget v0, Lcom/powervision/handheld/R$id;->text_8g:I

    if-ne v0, p1, :cond_3

    .line 151
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$100(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "8G"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$200(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 153
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$400(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 154
    :cond_3
    sget v0, Lcom/powervision/handheld/R$id;->text_16g:I

    if-ne v0, p1, :cond_4

    .line 155
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$100(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "16G"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$200(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 157
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$400(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 158
    :cond_4
    sget v0, Lcom/powervision/handheld/R$id;->text_auto:I

    if-ne v0, p1, :cond_5

    .line 159
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$100(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/powervision/handheld/R$string;->AP03_GeneralSetting_249:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$200(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 161
    iget-object p1, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {p1}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$300(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment$1;->this$0:Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;

    invoke-static {v0}, Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;->access$400(Lcom/powervision/handheld/ui/fragment/HandheldGeneralFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method
