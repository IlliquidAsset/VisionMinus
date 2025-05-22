.class Lcom/powervision/gcs/mina/ConnectionManager$1$MyIoFilterAdapter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/mina/ConnectionManager$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyIoFilterAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/mina/ConnectionManager$1;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/mina/ConnectionManager$1;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/powervision/gcs/mina/ConnectionManager$1$MyIoFilterAdapter;->this$1:Lcom/powervision/gcs/mina/ConnectionManager$1;

    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "ConnectionManager"

    const-string p2, "\u8fde\u63a5\u5173\u95ed\uff0c\u6bcf\u96945\u79d2\u8fdb\u884c\u91cd\u65b0\u8fde\u63a5"

    .line 221
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
