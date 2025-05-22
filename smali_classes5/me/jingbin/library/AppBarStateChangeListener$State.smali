.class public final enum Lme/jingbin/library/AppBarStateChangeListener$State;
.super Ljava/lang/Enum;
.source "AppBarStateChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/jingbin/library/AppBarStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lme/jingbin/library/AppBarStateChangeListener$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/jingbin/library/AppBarStateChangeListener$State;

.field public static final enum COLLAPSED:Lme/jingbin/library/AppBarStateChangeListener$State;

.field public static final enum EXPANDED:Lme/jingbin/library/AppBarStateChangeListener$State;

.field public static final enum IDLE:Lme/jingbin/library/AppBarStateChangeListener$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lme/jingbin/library/AppBarStateChangeListener$State;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lme/jingbin/library/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/jingbin/library/AppBarStateChangeListener$State;->EXPANDED:Lme/jingbin/library/AppBarStateChangeListener$State;

    .line 13
    new-instance v0, Lme/jingbin/library/AppBarStateChangeListener$State;

    const-string v1, "COLLAPSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lme/jingbin/library/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/jingbin/library/AppBarStateChangeListener$State;->COLLAPSED:Lme/jingbin/library/AppBarStateChangeListener$State;

    .line 14
    new-instance v0, Lme/jingbin/library/AppBarStateChangeListener$State;

    const-string v1, "IDLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lme/jingbin/library/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/jingbin/library/AppBarStateChangeListener$State;->IDLE:Lme/jingbin/library/AppBarStateChangeListener$State;

    const/4 v1, 0x3

    new-array v1, v1, [Lme/jingbin/library/AppBarStateChangeListener$State;

    .line 11
    sget-object v5, Lme/jingbin/library/AppBarStateChangeListener$State;->EXPANDED:Lme/jingbin/library/AppBarStateChangeListener$State;

    aput-object v5, v1, v2

    sget-object v2, Lme/jingbin/library/AppBarStateChangeListener$State;->COLLAPSED:Lme/jingbin/library/AppBarStateChangeListener$State;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lme/jingbin/library/AppBarStateChangeListener$State;->$VALUES:[Lme/jingbin/library/AppBarStateChangeListener$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/jingbin/library/AppBarStateChangeListener$State;
    .locals 1

    .line 11
    const-class v0, Lme/jingbin/library/AppBarStateChangeListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lme/jingbin/library/AppBarStateChangeListener$State;

    return-object p0
.end method

.method public static values()[Lme/jingbin/library/AppBarStateChangeListener$State;
    .locals 1

    .line 11
    sget-object v0, Lme/jingbin/library/AppBarStateChangeListener$State;->$VALUES:[Lme/jingbin/library/AppBarStateChangeListener$State;

    invoke-virtual {v0}, [Lme/jingbin/library/AppBarStateChangeListener$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/jingbin/library/AppBarStateChangeListener$State;

    return-object v0
.end method
