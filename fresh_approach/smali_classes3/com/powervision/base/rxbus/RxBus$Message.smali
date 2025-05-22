.class final Lcom/powervision/base/rxbus/RxBus$Message;
.super Ljava/lang/Object;
.source "RxBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/rxbus/RxBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Message"
.end annotation


# instance fields
.field private mCode:I

.field private mObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/powervision/base/rxbus/RxBus;


# direct methods
.method private constructor <init>(Lcom/powervision/base/rxbus/RxBus;ILjava/lang/Object;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/powervision/base/rxbus/RxBus$Message;->this$0:Lcom/powervision/base/rxbus/RxBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput p2, p0, Lcom/powervision/base/rxbus/RxBus$Message;->mCode:I

    .line 352
    iput-object p3, p0, Lcom/powervision/base/rxbus/RxBus$Message;->mObject:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/base/rxbus/RxBus;ILjava/lang/Object;Lcom/powervision/base/rxbus/RxBus$1;)V
    .locals 0

    .line 346
    invoke-direct {p0, p1, p2, p3}, Lcom/powervision/base/rxbus/RxBus$Message;-><init>(Lcom/powervision/base/rxbus/RxBus;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/base/rxbus/RxBus$Message;)Ljava/lang/Object;
    .locals 0

    .line 346
    invoke-direct {p0}, Lcom/powervision/base/rxbus/RxBus$Message;->getObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/base/rxbus/RxBus$Message;)I
    .locals 0

    .line 346
    invoke-direct {p0}, Lcom/powervision/base/rxbus/RxBus$Message;->getCode()I

    move-result p0

    return p0
.end method

.method private getCode()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/powervision/base/rxbus/RxBus$Message;->mCode:I

    return v0
.end method

.method private getObject()Ljava/lang/Object;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/powervision/base/rxbus/RxBus$Message;->mObject:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public setCode(I)V
    .locals 0

    .line 360
    iput p1, p0, Lcom/powervision/base/rxbus/RxBus$Message;->mCode:I

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/powervision/base/rxbus/RxBus$Message;->mObject:Ljava/lang/Object;

    return-void
.end method
