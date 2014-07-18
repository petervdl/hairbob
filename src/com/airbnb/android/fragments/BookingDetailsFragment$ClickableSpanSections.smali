.class final enum Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;
.super Ljava/lang/Enum;
.source "BookingDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/BookingDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ClickableSpanSections"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

.field public static final enum CancellationPolicy:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

.field public static final enum GuestRefundPolicy:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

.field public static final enum HouseRules:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

.field public static final enum TermsOfService:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    const-string/jumbo v1, "TermsOfService"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->TermsOfService:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    .line 171
    new-instance v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    const-string/jumbo v1, "HouseRules"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->HouseRules:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    .line 172
    new-instance v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    const-string/jumbo v1, "CancellationPolicy"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->CancellationPolicy:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    .line 173
    new-instance v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    const-string/jumbo v1, "GuestRefundPolicy"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->GuestRefundPolicy:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    .line 169
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    sget-object v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->TermsOfService:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->HouseRules:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->CancellationPolicy:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->GuestRefundPolicy:Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->$VALUES:[Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

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
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    const-class v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;
    .registers 1

    .prologue
    .line 169
    sget-object v0, Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->$VALUES:[Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/BookingDetailsFragment$ClickableSpanSections;

    return-object v0
.end method
