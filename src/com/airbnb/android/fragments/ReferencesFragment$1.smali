.class Lcom/airbnb/android/fragments/ReferencesFragment$1;
.super Lcom/airbnb/android/requests/AirRequestFactory;
.source "ReferencesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ReferencesFragment;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirRequestFactory",
        "<",
        "Lcom/airbnb/android/requests/ReferencesRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ReferencesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ReferencesFragment;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/airbnb/android/fragments/ReferencesFragment$1;->this$0:Lcom/airbnb/android/fragments/ReferencesFragment;

    invoke-direct {p0}, Lcom/airbnb/android/requests/AirRequestFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AirbnbRequest;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/airbnb/android/requests/RequestListener;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/ReferencesFragment$1;->getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReferencesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReferencesRequest;
    .registers 9
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ReferencesRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/ReferencesRequest;"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "callback":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ReferencesRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/ReferencesRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ReferencesFragment$1;->this$0:Lcom/airbnb/android/fragments/ReferencesFragment;

    # getter for: Lcom/airbnb/android/fragments/ReferencesFragment;->mUserId:J
    invoke-static {v1}, Lcom/airbnb/android/fragments/ReferencesFragment;->access$000(Lcom/airbnb/android/fragments/ReferencesFragment;)J

    move-result-wide v1

    const/16 v4, 0xa

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/requests/ReferencesRequest;-><init>(JIILcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method
