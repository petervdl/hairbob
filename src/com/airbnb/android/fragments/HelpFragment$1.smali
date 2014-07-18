.class Lcom/airbnb/android/fragments/HelpFragment$1;
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
    .line 58
    iput-object p1, p0, Lcom/airbnb/android/fragments/HelpFragment$1;->this$0:Lcom/airbnb/android/fragments/HelpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 63
    .local v0, "viewId":I
    const v1, 0x7f0801c1

    if-ne v0, v1, :cond_1a

    .line 64
    iget-object v1, p0, Lcom/airbnb/android/fragments/HelpFragment$1;->this$0:Lcom/airbnb/android/fragments/HelpFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/HelpFragment$1;->this$0:Lcom/airbnb/android/fragments/HelpFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/HelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->intentForFirstTime(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/HelpFragment;->startActivity(Landroid/content/Intent;)V

    .line 68
    :cond_19
    :goto_19
    return-void

    .line 65
    :cond_1a
    const v1, 0x7f0801c2

    if-ne v0, v1, :cond_19

    .line 66
    iget-object v1, p0, Lcom/airbnb/android/fragments/HelpFragment$1;->this$0:Lcom/airbnb/android/fragments/HelpFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/HelpFragment$1;->this$0:Lcom/airbnb/android/fragments/HelpFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/HelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/activities/WhyHostFtueActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/HelpFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_19
.end method
