import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxiadmin/home/ui/home_card.dart';
import 'package:wigootaxiadmin/providers/submission_provider.dart';
import 'package:wigootaxiadmin/routes/router.gr.dart';
import 'package:wigootaxiadmin/submission/application/submission_event.dart';
import 'package:wigootaxiadmin/submission/domain/submission.dart';
import 'package:wigootaxiadmin/theme/spacings.dart';

class SubmissionDetailsPage extends HookConsumerWidget {
  const SubmissionDetailsPage({
    Key? key,
    required this.submission,
  }) : super(key: key);
  final Submission submission;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = useState(submission.status);
    final submissionController = ref.watch(submissionProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text('Demande de ${submission.username}'),
      ),
      body: Padding(
        padding: kPadding,
        child: ListView(
          children: [
            20.h.verticalSpace,
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black,
                ),
                text: 'Chauffeur: ',
                children: [
                  TextSpan(
                    text: submission.type,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            10.h.verticalSpace,
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black,
                ),
                text: 'Nom: ',
                children: [
                  TextSpan(
                    text: submission.username,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            10.h.verticalSpace,
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black,
                ),
                text: 'Téléphone: ',
                children: [
                  TextSpan(
                    text: submission.phone,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            20.h.verticalSpace,
            buildHomeCard(
              text: 'Profil',
              icon: const Icon(
                Icons.file_copy,
              ),
              onPressed: () {
                AutoRouter.of(context).push(
                  DocumentImagePageRoute(
                    image: submission.profil,
                    title: 'Profil',
                  ),
                );
              },
            ),
            10.h.verticalSpace,
            buildHomeCard(
              text: 'Cin devant',
              icon: const Icon(
                Icons.file_copy,
              ),
              onPressed: () {
                AutoRouter.of(context).push(
                  DocumentImagePageRoute(
                    image: submission.cin_devant,
                    title: 'Cin devant',
                  ),
                );
              },
            ),
            10.h.verticalSpace,
            buildHomeCard(
              text: 'Cin arriere',
              icon: const Icon(
                Icons.file_copy,
              ),
              onPressed: () {
                AutoRouter.of(context).push(
                  DocumentImagePageRoute(
                    image: submission.cin_arriere,
                    title: 'Cin arriere',
                  ),
                );
              },
            ),
            10.h.verticalSpace,
            buildHomeCard(
              text: 'Carte grisse devant',
              icon: const Icon(
                Icons.file_copy,
              ),
              onPressed: () {
                AutoRouter.of(context).push(
                  DocumentImagePageRoute(
                    image: submission.cartegrisse_devant,
                    title: 'Carte grisse devant',
                  ),
                );
              },
            ),
            10.h.verticalSpace,
            buildHomeCard(
              text: 'Carte grisse arriere',
              icon: const Icon(
                Icons.file_copy,
              ),
              onPressed: () {
                AutoRouter.of(context).push(
                  DocumentImagePageRoute(
                    image: submission.cartegrisse_arriere,
                    title: 'Carte grisse arriere',
                  ),
                );
              },
            ),
            10.h.verticalSpace,
            buildHomeCard(
              text: 'Permis devant',
              icon: const Icon(
                Icons.file_copy,
              ),
              onPressed: () {
                AutoRouter.of(context).push(
                  DocumentImagePageRoute(
                    image: submission.permis_devant,
                    title: 'Permis devant',
                  ),
                );
              },
            ),
            10.h.verticalSpace,
            buildHomeCard(
              text: 'Permis arriere',
              icon: const Icon(
                Icons.file_copy,
              ),
              onPressed: () {
                AutoRouter.of(context).push(
                  DocumentImagePageRoute(
                    image: submission.permis_arriere,
                    title: 'Permis arriere',
                  ),
                );
              },
            ),
            20.h.verticalSpace,
            status.value == 'pending'
                ? Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 20.h,
                              )),
                          onPressed: () async {
                            final result = await showOkCancelAlertDialog(
                              context: context,
                              message:
                                  'Êtes-vous sûr de vouloir accepter cette demande',
                              title: 'Confirmation',
                              okLabel: 'Oui',
                              cancelLabel: 'Non',
                            );
                            if (result.index == 0) {
                              await submissionController.mapEventToState(
                                SubmissionEvent.statusChanged(
                                  'accepted',
                                  submission.id,
                                ),
                              );
                              status.value = 'accepter';
                            }
                          },
                          child: const Text(
                            'Accepter',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      20.w.horizontalSpace,
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 20.h,
                            ),
                          ),
                          onPressed: () async {
                            final result = await showOkCancelAlertDialog(
                              context: context,
                              message:
                                  'Êtes-vous sûr de vouloir refuser cette demande',
                              title: 'Confirmation',
                              okLabel: 'Oui',
                              cancelLabel: 'Non',
                            );
                            if (result.index == 0) {
                              await submissionController.mapEventToState(
                                SubmissionEvent.statusChanged(
                                  'refused',
                                  submission.id,
                                ),
                              );
                              status.value = 'refused';
                            }
                          },
                          child: const Text(
                            'Refuser',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                : Center(
                    child: Text(
                      status.value == 'accepted'
                          ? 'Acceptée'
                          : status.value == 'refused'
                              ? 'Refusée'
                              : '',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: status.value == 'accepted'
                            ? Colors.green
                            : status.value == 'refused'
                                ? Colors.red
                                : Colors.transparent,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
