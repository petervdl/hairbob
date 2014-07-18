.class Lcom/airbnb/android/fragments/PayoutTrustFragment$1;
.super Ljava/lang/Object;
.source "PayoutTrustFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutTrustFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    # invokes: Lcom/airbnb/android/fragments/PayoutTrustFragment;->selectBirthday()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->access$000(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V

    .line 74
    return-void
.end method
