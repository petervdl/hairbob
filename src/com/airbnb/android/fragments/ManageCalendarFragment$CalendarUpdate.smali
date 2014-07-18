.class Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "ManageCalendarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ManageCalendarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CalendarUpdate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLjava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 9
    .param p1, "listingId"    # J
    .param p3, "availabilityEntries"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/fragments/ManageCalendarFragment$CalendarUpdate;>;"
    const-string/jumbo v0, "listings/%d/update"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 245
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method
