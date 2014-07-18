.class public Lcom/airbnb/android/models/localcompanion/ServiceListSection;
.super Ljava/lang/Object;
.source "ServiceListSection.java"


# instance fields
.field private mHeaderResourceId:I

.field private mListResourceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .param p1, "headerResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p2, "listResourceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/airbnb/android/models/localcompanion/ServiceListSection;->mHeaderResourceId:I

    .line 12
    iput-object p2, p0, Lcom/airbnb/android/models/localcompanion/ServiceListSection;->mListResourceIds:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public getHeaderResourceId()I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/airbnb/android/models/localcompanion/ServiceListSection;->mHeaderResourceId:I

    return v0
.end method

.method public getListResourceIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/ServiceListSection;->mListResourceIds:Ljava/util/List;

    return-object v0
.end method
