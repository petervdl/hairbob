.class Lcom/airbnb/android/fragments/HelpFragment$2;
.super Ljava/lang/Object;
.source "HelpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/HelpFragment;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/HelpFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/HelpFragment;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/airbnb/android/fragments/HelpFragment$2;->this$0:Lcom/airbnb/android/fragments/HelpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/fragments/HelpFragment$2;->this$0:Lcom/airbnb/android/fragments/HelpFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/HelpFragment$2;->this$0:Lcom/airbnb/android/fragments/HelpFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/HelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/CustomerServiceActivity;->intentForCustomerService(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/HelpFragment;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
