.class final enum Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;
.super Ljava/lang/Enum;
.source "ROContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ResponseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

.field public static final enum Inquiry:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

.field public static final enum None:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

.field public static final enum RefreshView:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

.field public static final enum Reservation:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

.field public static final enum SpecialOffer:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

.field public static final enum SpecialOfferSent:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    new-instance v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->None:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    .line 167
    new-instance v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    const-string/jumbo v1, "Inquiry"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->Inquiry:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    .line 168
    new-instance v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    const-string/jumbo v1, "Reservation"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->Reservation:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    .line 169
    new-instance v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    const-string/jumbo v1, "SpecialOffer"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->SpecialOffer:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    .line 170
    new-instance v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    const-string/jumbo v1, "SpecialOfferSent"

    invoke-direct {v0, v1, v7}, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->SpecialOfferSent:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    .line 171
    new-instance v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    const-string/jumbo v1, "RefreshView"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->RefreshView:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    .line 165
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    sget-object v1, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->None:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->Inquiry:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->Reservation:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->SpecialOffer:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->SpecialOfferSent:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->RefreshView:Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->$VALUES:[Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    const-class v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;
    .registers 1

    .prologue
    .line 165
    sget-object v0, Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->$VALUES:[Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/ROContainerFragment$ResponseResult;

    return-object v0
.end method
