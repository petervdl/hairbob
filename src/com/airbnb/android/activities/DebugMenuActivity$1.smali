.class Lcom/airbnb/android/activities/DebugMenuActivity$1;
.super Ljava/lang/Object;
.source "DebugMenuActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 84
    iput-object p1, p0, Lcom/airbnb/android/activities/DebugMenuActivity$1;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity$1;->this$0:Lcom/airbnb/android/activities/DebugMenuActivity;

    # getter for: Lcom/airbnb/android/activities/DebugMenuActivity;->mDebugSettings:Lcom/airbnb/android/utils/DebugSettings;
    invoke-static {v0}, Lcom/airbnb/android/activities/DebugMenuActivity;->access$000(Lcom/airbnb/android/activities/DebugMenuActivity;)Lcom/airbnb/android/utils/DebugSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/airbnb/android/utils/DebugSettings;->setShakeFeedbackEnabled(Z)V

    .line 90
    return-void
.end method
