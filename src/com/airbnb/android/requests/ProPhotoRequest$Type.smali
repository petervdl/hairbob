.class public final enum Lcom/airbnb/android/requests/ProPhotoRequest$Type;
.super Ljava/lang/Enum;
.source "ProPhotoRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/ProPhotoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/requests/ProPhotoRequest$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/requests/ProPhotoRequest$Type;

.field public static final enum APPLY:Lcom/airbnb/android/requests/ProPhotoRequest$Type;

.field public static final enum CANCEL:Lcom/airbnb/android/requests/ProPhotoRequest$Type;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    const-string/jumbo v1, "APPLY"

    const-string/jumbo v2, "requested"

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/requests/ProPhotoRequest$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/requests/ProPhotoRequest$Type;->APPLY:Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    .line 10
    new-instance v0, Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    const-string/jumbo v1, "CANCEL"

    const-string/jumbo v2, "cancelled"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/requests/ProPhotoRequest$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/requests/ProPhotoRequest$Type;->CANCEL:Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    sget-object v1, Lcom/airbnb/android/requests/ProPhotoRequest$Type;->APPLY:Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/requests/ProPhotoRequest$Type;->CANCEL:Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/requests/ProPhotoRequest$Type;->$VALUES:[Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "apiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/airbnb/android/requests/ProPhotoRequest$Type;->value:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/requests/ProPhotoRequest$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/requests/ProPhotoRequest$Type;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/airbnb/android/requests/ProPhotoRequest$Type;->$VALUES:[Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    invoke-virtual {v0}, [Lcom/airbnb/android/requests/ProPhotoRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    return-object v0
.end method
