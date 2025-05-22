.class Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "ShipMediaImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->processLogic(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$100(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter;->getItemViewType(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_1
    const/4 p1, 0x4

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
