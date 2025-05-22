.class final enum Lcom/powervision/condition/widget/MovingPointOverlay$a;
.super Ljava/lang/Enum;
.source "MovingPointOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/condition/widget/MovingPointOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/condition/widget/MovingPointOverlay$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/condition/widget/MovingPointOverlay$a;

.field public static final enum a:Lcom/powervision/condition/widget/MovingPointOverlay$a;

.field public static final enum b:Lcom/powervision/condition/widget/MovingPointOverlay$a;

.field public static final enum c:Lcom/powervision/condition/widget/MovingPointOverlay$a;

.field public static final enum d:Lcom/powervision/condition/widget/MovingPointOverlay$a;

.field public static final enum e:Lcom/powervision/condition/widget/MovingPointOverlay$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 366
    new-instance v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;

    const-string v1, "a"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/condition/widget/MovingPointOverlay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;->a:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    .line 367
    new-instance v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;

    const-string v1, "b"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/condition/widget/MovingPointOverlay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;->b:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    .line 368
    new-instance v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;

    const-string v1, "c"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/condition/widget/MovingPointOverlay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;->c:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    .line 369
    new-instance v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;

    const-string v1, "d"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/powervision/condition/widget/MovingPointOverlay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;->d:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    .line 370
    new-instance v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;

    const-string v1, "e"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/powervision/condition/widget/MovingPointOverlay$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;->e:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/powervision/condition/widget/MovingPointOverlay$a;

    .line 365
    sget-object v7, Lcom/powervision/condition/widget/MovingPointOverlay$a;->a:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    aput-object v7, v1, v2

    sget-object v2, Lcom/powervision/condition/widget/MovingPointOverlay$a;->b:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/condition/widget/MovingPointOverlay$a;->c:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/powervision/condition/widget/MovingPointOverlay$a;->d:Lcom/powervision/condition/widget/MovingPointOverlay$a;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/powervision/condition/widget/MovingPointOverlay$a;->$VALUES:[Lcom/powervision/condition/widget/MovingPointOverlay$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 372
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/condition/widget/MovingPointOverlay$a;
    .locals 1

    .line 365
    const-class v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/condition/widget/MovingPointOverlay$a;

    return-object p0
.end method

.method public static values()[Lcom/powervision/condition/widget/MovingPointOverlay$a;
    .locals 1

    .line 365
    sget-object v0, Lcom/powervision/condition/widget/MovingPointOverlay$a;->$VALUES:[Lcom/powervision/condition/widget/MovingPointOverlay$a;

    invoke-virtual {v0}, [Lcom/powervision/condition/widget/MovingPointOverlay$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/condition/widget/MovingPointOverlay$a;

    return-object v0
.end method
