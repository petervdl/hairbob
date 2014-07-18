.class public final enum Lcom/airbnb/android/models/Alert$AlertType;
.super Ljava/lang/Enum;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/models/Alert$AlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/models/Alert$AlertType;

.field public static final enum AddPayoutInfo:Lcom/airbnb/android/models/Alert$AlertType;

.field public static final enum FriendlySuspended:Lcom/airbnb/android/models/Alert$AlertType;

.field public static final enum GroupsContent:Lcom/airbnb/android/models/Alert$AlertType;

.field public static final enum GroupsGeneric:Lcom/airbnb/android/models/Alert$AlertType;

.field public static final enum GroupsGroup:Lcom/airbnb/android/models/Alert$AlertType;

.field public static final enum GroupsMeetup:Lcom/airbnb/android/models/Alert$AlertType;

.field public static final enum Hospitality:Lcom/airbnb/android/models/Alert$AlertType;

.field public static final enum Inquiry:Lcom/airbnb/android/models/Alert$AlertType;

.field public static final enum LeaveReviews:Lcom/airbnb/android/models/Alert$AlertType;

.field public static final enum ReservationRequest:Lcom/airbnb/android/models/Alert$AlertType;

.field public static final enum TryInstantBook:Lcom/airbnb/android/models/Alert$AlertType;

.field public static final enum Webview:Lcom/airbnb/android/models/Alert$AlertType;

.field private static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/Alert$AlertType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, Lcom/airbnb/android/models/Alert$AlertType;

    const-string/jumbo v1, "ReservationRequest"

    const-string/jumbo v2, "reservation_request"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/models/Alert$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->ReservationRequest:Lcom/airbnb/android/models/Alert$AlertType;

    .line 20
    new-instance v0, Lcom/airbnb/android/models/Alert$AlertType;

    const-string/jumbo v1, "Inquiry"

    const-string/jumbo v2, "inquiry"

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/models/Alert$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->Inquiry:Lcom/airbnb/android/models/Alert$AlertType;

    .line 21
    new-instance v0, Lcom/airbnb/android/models/Alert$AlertType;

    const-string/jumbo v1, "Webview"

    const-string/jumbo v2, "webview"

    invoke-direct {v0, v1, v6, v2}, Lcom/airbnb/android/models/Alert$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->Webview:Lcom/airbnb/android/models/Alert$AlertType;

    .line 22
    new-instance v0, Lcom/airbnb/android/models/Alert$AlertType;

    const-string/jumbo v1, "GroupsGeneric"

    const-string/jumbo v2, "groups_generic"

    invoke-direct {v0, v1, v7, v2}, Lcom/airbnb/android/models/Alert$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->GroupsGeneric:Lcom/airbnb/android/models/Alert$AlertType;

    .line 23
    new-instance v0, Lcom/airbnb/android/models/Alert$AlertType;

    const-string/jumbo v1, "GroupsGroup"

    const-string/jumbo v2, "group"

    invoke-direct {v0, v1, v8, v2}, Lcom/airbnb/android/models/Alert$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->GroupsGroup:Lcom/airbnb/android/models/Alert$AlertType;

    .line 24
    new-instance v0, Lcom/airbnb/android/models/Alert$AlertType;

    const-string/jumbo v1, "GroupsContent"

    const/4 v2, 0x5

    const-string/jumbo v3, "group_content"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/models/Alert$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->GroupsContent:Lcom/airbnb/android/models/Alert$AlertType;

    .line 25
    new-instance v0, Lcom/airbnb/android/models/Alert$AlertType;

    const-string/jumbo v1, "GroupsMeetup"

    const/4 v2, 0x6

    const-string/jumbo v3, "group_meetup"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/models/Alert$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->GroupsMeetup:Lcom/airbnb/android/models/Alert$AlertType;

    .line 26
    new-instance v0, Lcom/airbnb/android/models/Alert$AlertType;

    const-string/jumbo v1, "AddPayoutInfo"

    const/4 v2, 0x7

    const-string/jumbo v3, "add_payout_info"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/models/Alert$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->AddPayoutInfo:Lcom/airbnb/android/models/Alert$AlertType;

    .line 27
    new-instance v0, Lcom/airbnb/android/models/Alert$AlertType;

    const-string/jumbo v1, "Hospitality"

    const/16 v2, 0x8

    const-string/jumbo v3, "hospitality"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/models/Alert$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->Hospitality:Lcom/airbnb/android/models/Alert$AlertType;

    .line 28
    new-instance v0, Lcom/airbnb/android/models/Alert$AlertType;

    const-string/jumbo v1, "LeaveReviews"

    const/16 v2, 0x9

    const-string/jumbo v3, "leave_reviews"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/models/Alert$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->LeaveReviews:Lcom/airbnb/android/models/Alert$AlertType;

    .line 29
    new-instance v0, Lcom/airbnb/android/models/Alert$AlertType;

    const-string/jumbo v1, "TryInstantBook"

    const/16 v2, 0xa

    const-string/jumbo v3, "instant_book_avail"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/models/Alert$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->TryInstantBook:Lcom/airbnb/android/models/Alert$AlertType;

    .line 30
    new-instance v0, Lcom/airbnb/android/models/Alert$AlertType;

    const-string/jumbo v1, "FriendlySuspended"

    const/16 v2, 0xb

    const-string/jumbo v3, "host_suspended_friendly"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/models/Alert$AlertType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->FriendlySuspended:Lcom/airbnb/android/models/Alert$AlertType;

    .line 18
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/airbnb/android/models/Alert$AlertType;

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->ReservationRequest:Lcom/airbnb/android/models/Alert$AlertType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->Inquiry:Lcom/airbnb/android/models/Alert$AlertType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->Webview:Lcom/airbnb/android/models/Alert$AlertType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->GroupsGeneric:Lcom/airbnb/android/models/Alert$AlertType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->GroupsGroup:Lcom/airbnb/android/models/Alert$AlertType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/models/Alert$AlertType;->GroupsContent:Lcom/airbnb/android/models/Alert$AlertType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/models/Alert$AlertType;->GroupsMeetup:Lcom/airbnb/android/models/Alert$AlertType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/models/Alert$AlertType;->AddPayoutInfo:Lcom/airbnb/android/models/Alert$AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/models/Alert$AlertType;->Hospitality:Lcom/airbnb/android/models/Alert$AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/airbnb/android/models/Alert$AlertType;->LeaveReviews:Lcom/airbnb/android/models/Alert$AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/airbnb/android/models/Alert$AlertType;->TryInstantBook:Lcom/airbnb/android/models/Alert$AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/airbnb/android/models/Alert$AlertType;->FriendlySuspended:Lcom/airbnb/android/models/Alert$AlertType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->$VALUES:[Lcom/airbnb/android/models/Alert$AlertType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/airbnb/android/models/Alert$AlertType;->mType:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/airbnb/android/models/Alert$AlertType;->initializeMapIfNeeded()V

    .line 37
    invoke-static {p3, p0}, Lcom/airbnb/android/models/Alert$AlertType;->addKey(Ljava/lang/String;Lcom/airbnb/android/models/Alert$AlertType;)V

    .line 38
    return-void
.end method

.method private static addKey(Ljava/lang/String;Lcom/airbnb/android/models/Alert$AlertType;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/airbnb/android/models/Alert$AlertType;

    .prologue
    .line 43
    sget-object v0, Lcom/airbnb/android/models/Alert$AlertType;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public static findType(Ljava/lang/String;)Lcom/airbnb/android/models/Alert$AlertType;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 53
    sget-object v2, Lcom/airbnb/android/models/Alert$AlertType;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Alert$AlertType;

    .line 54
    .local v0, "type":Lcom/airbnb/android/models/Alert$AlertType;
    if-eqz v0, :cond_d

    move-object v1, v0

    .line 59
    :cond_c
    :goto_c
    return-object v1

    .line 56
    :cond_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 57
    sget-object v2, Lcom/airbnb/android/models/Alert$AlertType;->Hospitality:Lcom/airbnb/android/models/Alert$AlertType;

    iget-object v2, v2, Lcom/airbnb/android/models/Alert$AlertType;->mType:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->Hospitality:Lcom/airbnb/android/models/Alert$AlertType;

    goto :goto_c
.end method

.method private static initializeMapIfNeeded()V
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/airbnb/android/models/Alert$AlertType;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Alert$AlertType;->mMap:Ljava/util/HashMap;

    .line 50
    :cond_b
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/models/Alert$AlertType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/airbnb/android/models/Alert$AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Alert$AlertType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/models/Alert$AlertType;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/airbnb/android/models/Alert$AlertType;->$VALUES:[Lcom/airbnb/android/models/Alert$AlertType;

    invoke-virtual {v0}, [Lcom/airbnb/android/models/Alert$AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/models/Alert$AlertType;

    return-object v0
.end method
