.class public final enum Lorg/apache/mina/core/session/SessionState;
.super Ljava/lang/Enum;
.source "SessionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/mina/core/session/SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/core/session/SessionState;

.field public static final enum CLOSING:Lorg/apache/mina/core/session/SessionState;

.field public static final enum OPENED:Lorg/apache/mina/core/session/SessionState;

.field public static final enum OPENING:Lorg/apache/mina/core/session/SessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lorg/apache/mina/core/session/SessionState;

    const-string v1, "OPENING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/SessionState;->OPENING:Lorg/apache/mina/core/session/SessionState;

    new-instance v0, Lorg/apache/mina/core/session/SessionState;

    const-string v1, "OPENED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/core/session/SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/SessionState;->OPENED:Lorg/apache/mina/core/session/SessionState;

    new-instance v0, Lorg/apache/mina/core/session/SessionState;

    const-string v1, "CLOSING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/mina/core/session/SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/SessionState;->CLOSING:Lorg/apache/mina/core/session/SessionState;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/mina/core/session/SessionState;

    .line 32
    sget-object v5, Lorg/apache/mina/core/session/SessionState;->OPENING:Lorg/apache/mina/core/session/SessionState;

    aput-object v5, v1, v2

    sget-object v2, Lorg/apache/mina/core/session/SessionState;->OPENED:Lorg/apache/mina/core/session/SessionState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/apache/mina/core/session/SessionState;->$VALUES:[Lorg/apache/mina/core/session/SessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/core/session/SessionState;
    .locals 1

    .line 32
    const-class v0, Lorg/apache/mina/core/session/SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/mina/core/session/SessionState;

    return-object p0
.end method

.method public static values()[Lorg/apache/mina/core/session/SessionState;
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/mina/core/session/SessionState;->$VALUES:[Lorg/apache/mina/core/session/SessionState;

    invoke-virtual {v0}, [Lorg/apache/mina/core/session/SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/core/session/SessionState;

    return-object v0
.end method
