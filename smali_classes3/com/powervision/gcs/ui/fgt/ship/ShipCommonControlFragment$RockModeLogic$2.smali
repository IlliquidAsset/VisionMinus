.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;
.super Ljava/lang/Object;
.source "ShipCommonControlFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->initDragView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6

    .line 833
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v2

    .line 849
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 850
    check-cast p1, Landroid/widget/ImageView;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "1"

    const-string v3, "0"

    const/16 v4, 0x9

    const/16 v5, 0x8

    if-eq p2, v5, :cond_3

    if-ne p2, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0xb

    const/16 v5, 0xa

    if-eq p2, v5, :cond_1

    if-ne p2, v4, :cond_5

    .line 868
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 869
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 870
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x3

    aget-object p1, p1, p2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 871
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v5

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 872
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v4

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 873
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$802(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Z)Z

    .line 874
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$1102(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Z)Z

    goto/16 :goto_1

    .line 875
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 876
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x5

    aget-object p1, p1, p2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 877
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x7

    aget-object p1, p1, p2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 878
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v5

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 879
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v4

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 880
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$802(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Z)Z

    .line 881
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$1102(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Z)Z

    goto/16 :goto_1

    .line 852
    :cond_3
    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 853
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v1

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 854
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 855
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v5

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 856
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v4

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 857
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$702(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Z)Z

    .line 858
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$1002(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Z)Z

    goto :goto_1

    .line 859
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 860
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x4

    aget-object p1, p1, p2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 861
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x6

    aget-object p1, p1, p2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 862
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v5

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 863
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$900(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v4

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 864
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$702(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Z)Z

    .line 865
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p1, v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$1002(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;Z)Z

    :cond_5
    :goto_1
    :pswitch_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
