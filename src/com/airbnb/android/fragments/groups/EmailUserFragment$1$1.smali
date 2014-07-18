.class Lcom/airbnb/android/fragments/groups/EmailUserFragment$1$1;
.super Ljava/lang/Object;
.source "EmailUserFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;->onClick(Landroid/view/View;)V
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
        "Lcom/airbnb/android/requests/groups/SendEmailRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1$1;->this$1:Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1$1;->this$1:Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;

    iget-object v0, v0, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/EmailUserFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/groups/EmailUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/groups/SendEmailRequest;)V
    .registers 2
    .param p1, "response"    # Lcom/airbnb/android/requests/groups/SendEmailRequest;

    .prologue
    .line 73
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Lcom/airbnb/android/requests/groups/SendEmailRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/groups/EmailUserFragment$1$1;->onResponse(Lcom/airbnb/android/requests/groups/SendEmailRequest;)V

    return-void
.end method
