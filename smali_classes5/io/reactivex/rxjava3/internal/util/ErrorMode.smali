.class public final enum Lio/reactivex/rxjava3/internal/util/ErrorMode;
.super Ljava/lang/Enum;
.source "ErrorMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/rxjava3/internal/util/ErrorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/rxjava3/internal/util/ErrorMode;

.field public static final enum BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

.field public static final enum END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

.field public static final enum IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/util/ErrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 23
    new-instance v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;

    const-string v1, "BOUNDARY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/reactivex/rxjava3/internal/util/ErrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 25
    new-instance v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;

    const-string v1, "END"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/reactivex/rxjava3/internal/util/ErrorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 19
    sget-object v5, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    aput-object v5, v1, v2

    sget-object v2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lio/reactivex/rxjava3/internal/util/ErrorMode;->$VALUES:[Lio/reactivex/rxjava3/internal/util/ErrorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/rxjava3/internal/util/ErrorMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 19
    const-class v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/util/ErrorMode;

    return-object p0
.end method

.method public static values()[Lio/reactivex/rxjava3/internal/util/ErrorMode;
    .locals 1

    .line 19
    sget-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->$VALUES:[Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-virtual {v0}, [Lio/reactivex/rxjava3/internal/util/ErrorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/util/ErrorMode;

    return-object v0
.end method
