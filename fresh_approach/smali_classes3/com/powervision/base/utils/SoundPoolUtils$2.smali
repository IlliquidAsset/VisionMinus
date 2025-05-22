.class Lcom/powervision/base/utils/SoundPoolUtils$2;
.super Ljava/lang/Object;
.source "SoundPoolUtils.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/utils/SoundPoolUtils;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/powervision/base/utils/SoundPoolUtils;I)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/powervision/base/utils/SoundPoolUtils$2;->this$0:Lcom/powervision/base/utils/SoundPoolUtils;

    iput p2, p0, Lcom/powervision/base/utils/SoundPoolUtils$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    iget-object p1, p0, Lcom/powervision/base/utils/SoundPoolUtils$2;->this$0:Lcom/powervision/base/utils/SoundPoolUtils;

    iget v0, p0, Lcom/powervision/base/utils/SoundPoolUtils$2;->val$index:I

    invoke-virtual {p1, v0}, Lcom/powervision/base/utils/SoundPoolUtils;->playAudio(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/powervision/base/utils/SoundPoolUtils$2;->accept(Ljava/lang/Long;)V

    return-void
.end method
