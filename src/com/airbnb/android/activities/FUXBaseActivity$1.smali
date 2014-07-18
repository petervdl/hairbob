.class Lcom/airbnb/android/activities/FUXBaseActivity$1;
.super Ljava/lang/Object;
.source "FUXBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/FUXBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/FUXBaseActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/FUXBaseActivity;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/airbnb/android/activities/FUXBaseActivity$1;->this$0:Lcom/airbnb/android/activities/FUXBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/activities/FUXBaseActivity$1;->this$0:Lcom/airbnb/android/activities/FUXBaseActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/FUXBaseActivity$1;->this$0:Lcom/airbnb/android/activities/FUXBaseActivity;

    iget-object v2, p0, Lcom/airbnb/android/activities/FUXBaseActivity$1;->this$0:Lcom/airbnb/android/activities/FUXBaseActivity;

    # ++operator for: Lcom/airbnb/android/activities/FUXBaseActivity;->mStep:I
    invoke-static {v2}, Lcom/airbnb/android/activities/FUXBaseActivity;->access$004(Lcom/airbnb/android/activities/FUXBaseActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/activities/FUXBaseActivity;->forStep(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    # invokes: Lcom/airbnb/android/activities/FUXBaseActivity;->showFragment(Landroid/support/v4/app/Fragment;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/FUXBaseActivity;->access$100(Lcom/airbnb/android/activities/FUXBaseActivity;Landroid/support/v4/app/Fragment;)V

    .line 32
    return-void
.end method
