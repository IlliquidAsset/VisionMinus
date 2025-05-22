.class Lcom/powervision/gcs/view/RemoteModelSwitchView$1;
.super Ljava/lang/Object;
.source "RemoteModelSwitchView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/RemoteModelSwitchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/RemoteModelSwitchView;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    .line 142
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const-string v1, "RemoteModelSwitchView"

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    const-string p1, "onDrag: ACTION_DRAG_EXITED"

    .line 154
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_1
    const-string p1, "onDrag: ACTION_DRAG_ENTERED"

    .line 148
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_2
    return v3

    .line 157
    :pswitch_3
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$000(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 159
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$100(Lcom/powervision/gcs/view/RemoteModelSwitchView;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$100(Lcom/powervision/gcs/view/RemoteModelSwitchView;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$200(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$300(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1, v3}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$402(Lcom/powervision/gcs/view/RemoteModelSwitchView;Z)Z

    .line 166
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1, v3}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$502(Lcom/powervision/gcs/view/RemoteModelSwitchView;Z)Z

    goto/16 :goto_0

    :cond_0
    if-ne p1, v3, :cond_3

    .line 168
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$100(Lcom/powervision/gcs/view/RemoteModelSwitchView;)[Landroid/widget/ImageView;

    move-result-object p1

    aget-object p1, p1, v3

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$100(Lcom/powervision/gcs/view/RemoteModelSwitchView;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x3

    aget-object p1, p1, p2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$600(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$700(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1, v3}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$802(Lcom/powervision/gcs/view/RemoteModelSwitchView;Z)Z

    .line 173
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1, v3}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$902(Lcom/powervision/gcs/view/RemoteModelSwitchView;Z)Z

    goto/16 :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {v0}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$1000(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 177
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 179
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$100(Lcom/powervision/gcs/view/RemoteModelSwitchView;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x4

    aget-object p1, p1, p2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_up:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$100(Lcom/powervision/gcs/view/RemoteModelSwitchView;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x6

    aget-object p1, p1, p2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_down:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$200(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$300(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1, v3}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$402(Lcom/powervision/gcs/view/RemoteModelSwitchView;Z)Z

    .line 184
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1, v2}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$502(Lcom/powervision/gcs/view/RemoteModelSwitchView;Z)Z

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 186
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$100(Lcom/powervision/gcs/view/RemoteModelSwitchView;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x5

    aget-object p1, p1, p2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_right:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$100(Lcom/powervision/gcs/view/RemoteModelSwitchView;)[Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x7

    aget-object p1, p1, p2

    sget p2, Lcom/powervision/gcs/R$mipmap;->rocker_left:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$600(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$700(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/powervision/gcs/R$mipmap;->hollow_circle:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1, v3}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$802(Lcom/powervision/gcs/view/RemoteModelSwitchView;Z)Z

    .line 191
    iget-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$1;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p1, v2}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$902(Lcom/powervision/gcs/view/RemoteModelSwitchView;Z)Z

    :cond_3
    :goto_0
    return v3

    :pswitch_4
    const-string p1, "onDrag: ACTION_DRAG_LOCATION"

    .line 151
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_5
    const-string p1, "onDrag: ACTION_DRAG_STARTED"

    .line 145
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
