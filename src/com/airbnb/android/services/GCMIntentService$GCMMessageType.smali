.class final enum Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;
.super Ljava/lang/Enum;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/services/GCMIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GCMMessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum ArrivalAssistantGuestArrived:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum ArrivalAssistantGuestEnRoute:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum ArrivalAssistantGuestInitiated:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum Checkpoint:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum CompanionMessageReceived:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum GroupsCommentInFollowedContent:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum GroupsCommentInFollowedMeetup:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum GroupsContent:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum GroupsMeetup:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum GroupsReplyInFollowedContent:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum GroupsReplyInFollowedMeetup:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum Message:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum ReservationGuestAccepted:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum ReservationGuestCancelled:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum ReservationGuestDeclined:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum ReservationGuestExpired:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum ReservationHostAccepted:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum ReservationHostCancelled:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum ReservationHostRequest:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum TripCharges:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field public static final enum Unknown:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

.field static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "Message"

    const-string/jumbo v2, "message"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->Message:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 54
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "Checkpoint"

    const-string/jumbo v2, "checkpoint"

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->Checkpoint:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 55
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "GroupsContent"

    const-string/jumbo v2, "groups_content"

    invoke-direct {v0, v1, v6, v2}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->GroupsContent:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 56
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "GroupsCommentInFollowedContent"

    const-string/jumbo v2, "groups_content_post"

    invoke-direct {v0, v1, v7, v2}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->GroupsCommentInFollowedContent:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 57
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "GroupsReplyInFollowedContent"

    const-string/jumbo v2, "groups_content_reply"

    invoke-direct {v0, v1, v8, v2}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->GroupsReplyInFollowedContent:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 58
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "GroupsMeetup"

    const/4 v2, 0x5

    const-string/jumbo v3, "groups_meetup"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->GroupsMeetup:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 59
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "GroupsCommentInFollowedMeetup"

    const/4 v2, 0x6

    const-string/jumbo v3, "groups_meetup_post"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->GroupsCommentInFollowedMeetup:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 60
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "GroupsReplyInFollowedMeetup"

    const/4 v2, 0x7

    const-string/jumbo v3, "groups_meetup_reply"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->GroupsReplyInFollowedMeetup:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 61
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "ReservationGuestAccepted"

    const/16 v2, 0x8

    const-string/jumbo v3, "reservation_guest_accepted"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationGuestAccepted:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 62
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "ReservationHostAccepted"

    const/16 v2, 0x9

    const-string/jumbo v3, "reservation_host_accepted"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationHostAccepted:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 63
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "ReservationGuestCancelled"

    const/16 v2, 0xa

    const-string/jumbo v3, "reservation_guest_cancelled"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationGuestCancelled:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 64
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "ReservationGuestDeclined"

    const/16 v2, 0xb

    const-string/jumbo v3, "reservation_guest_declined"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationGuestDeclined:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 65
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "ReservationGuestExpired"

    const/16 v2, 0xc

    const-string/jumbo v3, "reservation_guest_expired"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationGuestExpired:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 66
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "ReservationHostCancelled"

    const/16 v2, 0xd

    const-string/jumbo v3, "reservation_host_cancelled"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationHostCancelled:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 67
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "ReservationHostRequest"

    const/16 v2, 0xe

    const-string/jumbo v3, "reservation_host_request"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationHostRequest:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 68
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "TripCharges"

    const/16 v2, 0xf

    const-string/jumbo v3, "trip_invoice_purchase"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->TripCharges:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 69
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "ArrivalAssistantGuestInitiated"

    const/16 v2, 0x10

    const-string/jumbo v3, "arrival_assistant_guest_initiated"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ArrivalAssistantGuestInitiated:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 70
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "ArrivalAssistantGuestEnRoute"

    const/16 v2, 0x11

    const-string/jumbo v3, "arrival_assistant_guest_en_route"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ArrivalAssistantGuestEnRoute:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 71
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "ArrivalAssistantGuestArrived"

    const/16 v2, 0x12

    const-string/jumbo v3, "arrival_assistant_guest_arrived"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ArrivalAssistantGuestArrived:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 72
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "CompanionMessageReceived"

    const/16 v2, 0x13

    const-string/jumbo v3, "local_companion_reply"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->CompanionMessageReceived:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 73
    new-instance v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    const-string/jumbo v1, "Unknown"

    const/16 v2, 0x14

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->Unknown:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 52
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    sget-object v1, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->Message:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->Checkpoint:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->GroupsContent:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->GroupsCommentInFollowedContent:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->GroupsReplyInFollowedContent:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->GroupsMeetup:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->GroupsCommentInFollowedMeetup:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->GroupsReplyInFollowedMeetup:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationGuestAccepted:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationHostAccepted:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationGuestCancelled:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationGuestDeclined:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationGuestExpired:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationHostCancelled:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationHostRequest:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->TripCharges:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ArrivalAssistantGuestInitiated:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ArrivalAssistantGuestEnRoute:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ArrivalAssistantGuestArrived:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->CompanionMessageReceived:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->Unknown:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->$VALUES:[Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-static {}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->initializeMapIfNeeded()V

    .line 80
    invoke-static {p3, p0}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->addKey(Ljava/lang/String;Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;)V

    .line 81
    iput-object p3, p0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mKey:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static addKey(Ljava/lang/String;Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .prologue
    .line 85
    sget-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method static findType(Ljava/lang/String;)Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 96
    sget-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->Unknown:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    .line 99
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    goto :goto_a
.end method

.method static initializeMapIfNeeded()V
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mMap:Ljava/util/HashMap;

    .line 92
    :cond_b
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->$VALUES:[Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    invoke-virtual {v0}, [Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    return-object v0
.end method
