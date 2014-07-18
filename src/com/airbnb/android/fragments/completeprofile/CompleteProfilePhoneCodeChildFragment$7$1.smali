.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7$1;
.super Ljava/lang/Object;
.source "CompleteProfilePhoneCodeChildFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;->onPhoneAccountUpdateSuccess()V
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
        "Lcom/airbnb/android/requests/GetActiveAccountRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7$1;->this$1:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 222
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetActiveAccountRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/GetActiveAccountRequest;

    .prologue
    .line 217
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ProfileUpdatedEvent;

    sget-object v2, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Phone:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ProfileUpdatedEvent;-><init>(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 212
    check-cast p1, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhoneCodeChildFragment$7$1;->onResponse(Lcom/airbnb/android/requests/GetActiveAccountRequest;)V

    return-void
.end method
