.class public final enum Lcom/powervision/gcs/model/SubmissionModel$SubmissType;
.super Ljava/lang/Enum;
.source "SubmissionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/SubmissionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubmissType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/gcs/model/SubmissionModel$SubmissType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

.field public static final enum CONTENT:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

.field public static final enum EMPTY:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

.field public static final enum IMAGE:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

.field public static final enum VIDEO:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 84
    new-instance v0, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;->IMAGE:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    .line 85
    new-instance v0, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    const-string v1, "CONTENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;->CONTENT:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    .line 86
    new-instance v0, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    const-string v1, "VIDEO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;->VIDEO:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    .line 87
    new-instance v0, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    const-string v1, "EMPTY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;->EMPTY:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    .line 83
    sget-object v6, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;->IMAGE:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;->CONTENT:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;->VIDEO:Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;->$VALUES:[Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/gcs/model/SubmissionModel$SubmissType;
    .locals 1

    .line 83
    const-class v0, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    return-object p0
.end method

.method public static values()[Lcom/powervision/gcs/model/SubmissionModel$SubmissType;
    .locals 1

    .line 83
    sget-object v0, Lcom/powervision/gcs/model/SubmissionModel$SubmissType;->$VALUES:[Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    invoke-virtual {v0}, [Lcom/powervision/gcs/model/SubmissionModel$SubmissType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/gcs/model/SubmissionModel$SubmissType;

    return-object v0
.end method
