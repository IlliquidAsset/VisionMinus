.class Lcom/powervision/media/ui/adapter/MediaLibAdapter$TitleHolder;
.super Lme/jingbin/library/adapter/BaseByViewHolder;
.source "MediaLibAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/adapter/MediaLibAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/jingbin/library/adapter/BaseByViewHolder<",
        "Lcom/powervision/localhttp/entity/MediaLib;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/adapter/MediaLibAdapter;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/adapter/MediaLibAdapter;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter$TitleHolder;->this$0:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    .line 180
    invoke-direct {p0, p2, p3}, Lme/jingbin/library/adapter/BaseByViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    return-void
.end method


# virtual methods
.method protected onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Lcom/powervision/localhttp/entity/MediaLib;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/jingbin/library/adapter/BaseByViewHolder<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            "I)V"
        }
    .end annotation

    .line 185
    sget p3, Lcom/powervision/media/R$id;->media_title:I

    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->getCreateDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lme/jingbin/library/adapter/BaseByViewHolder;->setText(ILjava/lang/CharSequence;)Lme/jingbin/library/adapter/BaseByViewHolder;

    move-result-object p3

    sget v0, Lcom/powervision/media/R$id;->media_group_select:I

    .line 186
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lme/jingbin/library/adapter/BaseByViewHolder;->itemView:Landroid/view/View;

    .line 187
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$string;->App_MediaLib_23:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lme/jingbin/library/adapter/BaseByViewHolder;->itemView:Landroid/view/View;

    .line 188
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/powervision/media/R$string;->AP03_DV_MediaLib_9_1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    :goto_0
    invoke-virtual {p3, v0, v1}, Lme/jingbin/library/adapter/BaseByViewHolder;->setText(ILjava/lang/CharSequence;)Lme/jingbin/library/adapter/BaseByViewHolder;

    move-result-object p3

    sget v0, Lcom/powervision/media/R$id;->media_group_select:I

    .line 189
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/MediaLib;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Lme/jingbin/library/adapter/BaseByViewHolder;->itemView:Landroid/view/View;

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/media/R$color;->blue:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lme/jingbin/library/adapter/BaseByViewHolder;->itemView:Landroid/view/View;

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/powervision/media/R$color;->white:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 189
    :goto_1
    invoke-virtual {p3, v0, p1}, Lme/jingbin/library/adapter/BaseByViewHolder;->setTextColor(II)Lme/jingbin/library/adapter/BaseByViewHolder;

    move-result-object p1

    sget p2, Lcom/powervision/media/R$id;->media_group_select:I

    iget-object p3, p0, Lcom/powervision/media/ui/adapter/MediaLibAdapter$TitleHolder;->this$0:Lcom/powervision/media/ui/adapter/MediaLibAdapter;

    .line 192
    invoke-static {p3}, Lcom/powervision/media/ui/adapter/MediaLibAdapter;->access$200(Lcom/powervision/media/ui/adapter/MediaLibAdapter;)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lme/jingbin/library/adapter/BaseByViewHolder;->setVisible(IZ)Lme/jingbin/library/adapter/BaseByViewHolder;

    move-result-object p1

    sget p2, Lcom/powervision/media/R$id;->media_group_select:I

    .line 193
    invoke-virtual {p1, p2}, Lme/jingbin/library/adapter/BaseByViewHolder;->addOnClickListener(I)Lme/jingbin/library/adapter/BaseByViewHolder;

    return-void
.end method

.method protected bridge synthetic onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 178
    check-cast p2, Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {p0, p1, p2, p3}, Lcom/powervision/media/ui/adapter/MediaLibAdapter$TitleHolder;->onBaseBindView(Lme/jingbin/library/adapter/BaseByViewHolder;Lcom/powervision/localhttp/entity/MediaLib;I)V

    return-void
.end method
