.class public final enum Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;
.super Ljava/lang/Enum;
.source "UltraViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmall/ultraviewpager/UltraViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

.field public static final enum BACKWARD:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

.field public static final enum FORWARD:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

.field public static final enum NONE:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;


# instance fields
.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 75
    new-instance v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;->NONE:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    new-instance v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    const-string v1, "BACKWARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;->BACKWARD:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    new-instance v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    const-string v1, "FORWARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;->FORWARD:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    .line 74
    sget-object v5, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;->NONE:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    aput-object v5, v1, v2

    sget-object v2, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;->BACKWARD:Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;->$VALUES:[Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;->id:I

    return-void
.end method

.method static getScrollDirection(I)Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;
    .locals 5

    .line 83
    invoke-static {}, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;->values()[Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 84
    iget v4, v3, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;
    .locals 1

    .line 74
    const-class v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    return-object p0
.end method

.method public static values()[Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;
    .locals 1

    .line 74
    sget-object v0, Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;->$VALUES:[Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    invoke-virtual {v0}, [Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tmall/ultraviewpager/UltraViewPager$ScrollDirection;

    return-object v0
.end method
