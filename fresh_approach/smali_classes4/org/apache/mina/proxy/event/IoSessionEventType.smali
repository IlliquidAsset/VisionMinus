.class public final enum Lorg/apache/mina/proxy/event/IoSessionEventType;
.super Ljava/lang/Enum;
.source "IoSessionEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/mina/proxy/event/IoSessionEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/proxy/event/IoSessionEventType;

.field public static final enum CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

.field public static final enum CREATED:Lorg/apache/mina/proxy/event/IoSessionEventType;

.field public static final enum IDLE:Lorg/apache/mina/proxy/event/IoSessionEventType;

.field public static final enum OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/proxy/event/IoSessionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->CREATED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    new-instance v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    const-string v1, "OPENED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/mina/proxy/event/IoSessionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    new-instance v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    const-string v1, "IDLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/mina/proxy/event/IoSessionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->IDLE:Lorg/apache/mina/proxy/event/IoSessionEventType;

    new-instance v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    const-string v1, "CLOSED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/mina/proxy/event/IoSessionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    new-array v1, v6, [Lorg/apache/mina/proxy/event/IoSessionEventType;

    .line 28
    sget-object v6, Lorg/apache/mina/proxy/event/IoSessionEventType;->CREATED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    aput-object v6, v1, v2

    sget-object v2, Lorg/apache/mina/proxy/event/IoSessionEventType;->OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/mina/proxy/event/IoSessionEventType;->IDLE:Lorg/apache/mina/proxy/event/IoSessionEventType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/apache/mina/proxy/event/IoSessionEventType;->$VALUES:[Lorg/apache/mina/proxy/event/IoSessionEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lorg/apache/mina/proxy/event/IoSessionEventType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/proxy/event/IoSessionEventType;
    .locals 1

    .line 28
    const-class v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    return-object p0
.end method

.method public static values()[Lorg/apache/mina/proxy/event/IoSessionEventType;
    .locals 1

    .line 28
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->$VALUES:[Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-virtual {v0}, [Lorg/apache/mina/proxy/event/IoSessionEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/proxy/event/IoSessionEventType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventType;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType$1;->$SwitchMap$org$apache$mina$proxy$event$IoSessionEventType:[I

    invoke-virtual {p0}, Lorg/apache/mina/proxy/event/IoSessionEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Event Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/proxy/event/IoSessionEventType;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "- CLOSED event -"

    return-object v0

    :cond_1
    const-string v0, "- IDLE event -"

    return-object v0

    :cond_2
    const-string v0, "- OPENED event -"

    return-object v0

    :cond_3
    const-string v0, "- CREATED event -"

    return-object v0
.end method
