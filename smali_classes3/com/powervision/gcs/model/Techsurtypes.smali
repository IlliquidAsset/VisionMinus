.class public Lcom/powervision/gcs/model/Techsurtypes;
.super Ljava/lang/Object;
.source "Techsurtypes.java"


# instance fields
.field private iconurl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageSrc:I

.field private tsname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconurl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/powervision/gcs/model/Techsurtypes;->iconurl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/powervision/gcs/model/Techsurtypes;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSrc()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/powervision/gcs/model/Techsurtypes;->imageSrc:I

    return v0
.end method

.method public getTsname()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/powervision/gcs/model/Techsurtypes;->tsname:Ljava/lang/String;

    return-object v0
.end method

.method public setIconurl(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/model/Techsurtypes;->iconurl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/model/Techsurtypes;->id:Ljava/lang/String;

    return-void
.end method

.method public setImageSrc(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/powervision/gcs/model/Techsurtypes;->imageSrc:I

    return-void
.end method

.method public setTsname(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/powervision/gcs/model/Techsurtypes;->tsname:Ljava/lang/String;

    return-void
.end method
