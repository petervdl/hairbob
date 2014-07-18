.class public Lcom/airbnb/android/activities/ROResponseDialogActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "ROResponseDialogActivity.java"


# static fields
.field private static final ALPHA_ANIM_DURATION:I = 0xc8

.field private static final ALPHA_TO_VALUE:F = 0.6f

.field private static final ARG_FOR_RESERVATION_REQUEST:Ljava/lang/String; = "reservation_request"

.field private static final ARG_MSG_THREAD:Ljava/lang/String; = "ro_msg_thread"

.field private static final ARG_RESERVATION:Ljava/lang/String; = "ro_reservation"

.field public static final REQUEST_SPECIAL_OFFER:I = 0x321


# instance fields
.field private mMessageThread:Lcom/airbnb/android/models/MessageThread;

.field private mReservation:Lcom/airbnb/android/models/Reservation;

.field private mTranslucentBg:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/ROResponseDialogActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ROResponseDialogActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity;->mTranslucentBg:Landroid/view/View;

    return-object v0
.end method

.method public static intentForDefault(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Z)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p2, "messageThread"    # Lcom/airbnb/android/models/MessageThread;
    .param p3, "forReservationRequest"    # Z

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ROResponseDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "ro_reservation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v1, "ro_msg_thread"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    const-string/jumbo v1, "reservation_request"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 79
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->finish()V

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity;->mTranslucentBg:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const/4 v0, 0x0

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->overridePendingTransition(II)V

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->setContentView(I)V

    .line 44
    const v3, 0x7f04000a

    const v4, 0x7f04000b

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->overridePendingTransition(II)V

    .line 46
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "ro_reservation"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Reservation;

    iput-object v3, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "ro_msg_thread"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/MessageThread;

    iput-object v3, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    .line 48
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "reservation_request"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 50
    .local v0, "forReservationRequest":Z
    const v3, 0x7f080041

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity;->mTranslucentBg:Landroid/view/View;

    .line 51
    iget-object v3, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity;->mTranslucentBg:Landroid/view/View;

    new-instance v4, Lcom/airbnb/android/activities/ROResponseDialogActivity$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/activities/ROResponseDialogActivity$1;-><init>(Lcom/airbnb/android/activities/ROResponseDialogActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ROResponseDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 60
    .local v1, "fragManager":Landroid/support/v4/app/FragmentManager;
    iget-object v3, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity;->mReservation:Lcom/airbnb/android/models/Reservation;

    iget-object v4, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity;->mMessageThread:Lcom/airbnb/android/models/MessageThread;

    invoke-static {p0, v3, v4, v0}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->newInstance(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;Z)Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    move-result-object v2

    .line 61
    .local v2, "responseDialogFragment":Lcom/airbnb/android/fragments/ROResponseDialogFragment;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f080042

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 62
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 66
    invoke-super {p0}, Lcom/airbnb/android/activities/AirActivity;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/activities/ROResponseDialogActivity;->mTranslucentBg:Landroid/view/View;

    new-instance v1, Lcom/airbnb/android/activities/ROResponseDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/ROResponseDialogActivity$2;-><init>(Lcom/airbnb/android/activities/ROResponseDialogActivity;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method
