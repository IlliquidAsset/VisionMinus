.class Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;
.super Ljava/lang/Object;
.source "AOAShipMediaManagerActivity.java"

# interfaces
.implements Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelSelectAll()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$502(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;I)I

    .line 233
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextSelectAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Msg_57:I

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$400(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V

    return-void
.end method

.method public onClickListener(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 0

    return-void
.end method

.method public onLoadMore()V
    .locals 0

    return-void
.end method

.method public onSelectAll()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$502(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;I)I

    .line 219
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextSelectAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Msg_58:I

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSelectedChanged(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;)V"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectedChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AOAShipMediaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextTitle:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v4, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    sget v5, Lcom/powervision/gcs/R$string;->MediaLib_9:I

    invoke-virtual {v4, v5}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$102(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 191
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-static {v0, v2}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$200(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Z)V

    .line 196
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/model/ship/ShipMediaImageModel;

    .line 197
    invoke-static {v0}, Lcom/powervision/gcs/utils/ship/ShipMediaHelper;->isSaveToAlbumAndFileExit(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextSelectAll:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v1, 0x1

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-static {p1, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$300(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Z)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextTitle:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    sget v4, Lcom/powervision/gcs/R$string;->MediaLib_9:I

    invoke-virtual {v3, v4}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$400(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V

    :goto_0
    return-void
.end method

.method public onUnselectAll()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$502(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;I)I

    .line 226
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->mTextSelectAll:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$2;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_Msg_57:I

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
