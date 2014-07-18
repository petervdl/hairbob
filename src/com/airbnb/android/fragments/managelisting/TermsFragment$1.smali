.class Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;
.super Ljava/lang/Object;
.source "TermsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/TermsFragment;->setupCancellationPolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 98
    new-instance v0, Lcom/airbnb/android/requests/CancellationPoliciesRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1$1;-><init>(Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/CancellationPoliciesRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/CancellationPoliciesRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 117
    return-void
.end method
