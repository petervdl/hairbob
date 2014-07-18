.class Lcom/airbnb/android/activities/DebugMenuActivity$6;
.super Ljava/lang/Object;
.source "DebugMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/DebugMenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/DebugMenuActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/DebugMenuActivity;)V
    .registers 2

    .prologue
    .line 240
    iput-object p1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$6;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$6;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/activities/TrebuchetOverrideActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/DebugMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 245
    return-void
.end method
