.class Lcom/airbnb/android/fragments/MessagesFragment$3;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/MessagesFragment;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/AlertsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/MessagesFragment;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lcom/airbnb/android/fragments/MessagesFragment$3;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment$3;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 233
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment$3;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/MessagesFragment;->onTravelInboxLoaded()V

    .line 234
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/AlertsRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/AlertsRequest;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment$3;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    # getter for: Lcom/airbnb/android/fragments/MessagesFragment;->mAdapter:Lcom/airbnb/android/adapters/TravelInboxAdapter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/MessagesFragment;->access$200(Lcom/airbnb/android/fragments/MessagesFragment;)Lcom/airbnb/android/adapters/TravelInboxAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/airbnb/android/requests/AlertsRequest;->alerts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/TravelInboxAdapter;->addAll(Ljava/util/Collection;)V

    .line 227
    iget-object v0, p0, Lcom/airbnb/android/fragments/MessagesFragment$3;->this$0:Lcom/airbnb/android/fragments/MessagesFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/MessagesFragment;->onTravelInboxLoaded()V

    .line 228
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 222
    check-cast p1, Lcom/airbnb/android/requests/AlertsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/MessagesFragment$3;->onResponse(Lcom/airbnb/android/requests/AlertsRequest;)V

    return-void
.end method
