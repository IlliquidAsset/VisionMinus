.class public final enum Lbutterknife/OnPageChange$Callback;
.super Ljava/lang/Enum;
.source "OnPageChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbutterknife/OnPageChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbutterknife/OnPageChange$Callback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbutterknife/OnPageChange$Callback;

.field public static final enum PAGE_SCROLLED:Lbutterknife/OnPageChange$Callback;
    .annotation runtime Lbutterknife/internal/ListenerMethod;
        name = "onPageScrolled"
        parameters = {
            "int",
            "float",
            "int"
        }
    .end annotation
.end field

.field public static final enum PAGE_SCROLL_STATE_CHANGED:Lbutterknife/OnPageChange$Callback;
    .annotation runtime Lbutterknife/internal/ListenerMethod;
        name = "onPageScrollStateChanged"
        parameters = {
            "int"
        }
    .end annotation
.end field

.field public static final enum PAGE_SELECTED:Lbutterknife/OnPageChange$Callback;
    .annotation runtime Lbutterknife/internal/ListenerMethod;
        name = "onPageSelected"
        parameters = {
            "int"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 49
    new-instance v0, Lbutterknife/OnPageChange$Callback;

    const-string v1, "PAGE_SELECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbutterknife/OnPageChange$Callback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbutterknife/OnPageChange$Callback;->PAGE_SELECTED:Lbutterknife/OnPageChange$Callback;

    .line 56
    new-instance v0, Lbutterknife/OnPageChange$Callback;

    const-string v1, "PAGE_SCROLLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbutterknife/OnPageChange$Callback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbutterknife/OnPageChange$Callback;->PAGE_SCROLLED:Lbutterknife/OnPageChange$Callback;

    .line 67
    new-instance v0, Lbutterknife/OnPageChange$Callback;

    const-string v1, "PAGE_SCROLL_STATE_CHANGED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbutterknife/OnPageChange$Callback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbutterknife/OnPageChange$Callback;->PAGE_SCROLL_STATE_CHANGED:Lbutterknife/OnPageChange$Callback;

    const/4 v1, 0x3

    new-array v1, v1, [Lbutterknife/OnPageChange$Callback;

    .line 47
    sget-object v5, Lbutterknife/OnPageChange$Callback;->PAGE_SELECTED:Lbutterknife/OnPageChange$Callback;

    aput-object v5, v1, v2

    sget-object v2, Lbutterknife/OnPageChange$Callback;->PAGE_SCROLLED:Lbutterknife/OnPageChange$Callback;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lbutterknife/OnPageChange$Callback;->$VALUES:[Lbutterknife/OnPageChange$Callback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbutterknife/OnPageChange$Callback;
    .locals 1

    .line 47
    const-class v0, Lbutterknife/OnPageChange$Callback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbutterknife/OnPageChange$Callback;

    return-object p0
.end method

.method public static values()[Lbutterknife/OnPageChange$Callback;
    .locals 1

    .line 47
    sget-object v0, Lbutterknife/OnPageChange$Callback;->$VALUES:[Lbutterknife/OnPageChange$Callback;

    invoke-virtual {v0}, [Lbutterknife/OnPageChange$Callback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbutterknife/OnPageChange$Callback;

    return-object v0
.end method
